<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class Api extends ResourceController
{
    protected $format = 'json';

    private $apiKey = "ZYPHOR_SECRET_KEY";

    private function bot($method, $data = [])
    {
        $token = env('TELEGRAM_BOT_TOKEN');

        $ch = curl_init();

        curl_setopt_array($ch, [
            CURLOPT_URL => "https://api.telegram.org/bot{$token}/{$method}",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_POST => true,
            CURLOPT_POSTFIELDS => $data,
        ]);

        $result = curl_exec($ch);

        curl_close($ch);

        return $result;
    }

    /*
    |--------------------------------------------------------------------------
    | API HOME
    |--------------------------------------------------------------------------
    */

    public function index()
    {
        return $this->respond([
            "status" => true,
            "message" => "Zyphor Server API Works"
        ]);
    }

    /*
    |--------------------------------------------------------------------------
    | CHECK AUTH
    |--------------------------------------------------------------------------
    */

    private function checkAuth()
    {
        $key = $this->request->getHeaderLine('X-API-KEY');

        if ($key !== $this->apiKey) {

            echo json_encode([
                "status" => false,
                "message" => "Unauthorized"
            ]);

            exit;
        }
    }

    /*
    |--------------------------------------------------------------------------
    | REGISTER USER
    |--------------------------------------------------------------------------
    */

    public function register()
    {
        $this->checkAuth();

        $telegram_id = $this->request->getPost('telegram_id');
        $username    = $this->request->getPost('username');
        $role        = $this->request->getPost('role');

        if (!$telegram_id || !$role) {

            return $this->fail([
                "message" => "Missing Data"
            ]);
        }

        $db = \Config\Database::connect();

        $exists = $db->table('users')
            ->where('telegram_id', $telegram_id)
            ->get()
            ->getRow();

        if ($exists) {

            return $this->respond([
                "status" => true,
                "message" => "User Already Exists"
            ]);
        }

        $db->table('users')->insert([
            'telegram_id' => $telegram_id,
            'username'    => $username,
            'role'        => $role,
            'created_at'  => date('Y-m-d H:i:s')
        ]);

        return $this->respond([
            "status" => true,
            "message" => "User Registered"
        ]);
    }

    /*
    |--------------------------------------------------------------------------
    | GET USER
    |--------------------------------------------------------------------------
    */

    public function user($telegram_id = null)
    {
        $this->checkAuth();

        $db = \Config\Database::connect();

        $user = $db->table('users')
            ->where('telegram_id', $telegram_id)
            ->get()
            ->getRowArray();

        if (!$user) {

            return $this->failNotFound("User Not Found");
        }

        return $this->respond([
            "status" => true,
            "user" => $user
        ]);
    }

    /*
    |--------------------------------------------------------------------------
    | CHECK ROLE
    |--------------------------------------------------------------------------
    */

    public function checkRole($telegram_id = null)
    {
        $this->checkAuth();

        $db = \Config\Database::connect();

        $user = $db->table('users')
            ->where('telegram_id', $telegram_id)
            ->get()
            ->getRowArray();

        if (!$user) {

            return $this->failNotFound("User Not Found");
        }

        return $this->respond([
            "status" => true,
            "role" => $user['role']
        ]);
    }

    /*
    |--------------------------------------------------------------------------
    | TELEGRAM WEBHOOK
    |--------------------------------------------------------------------------
    */

    public function telegram()
    {
        $update = json_decode(file_get_contents("php://input"), true);

        if (!$update) {

            return $this->respond([
                "status" => false,
                "message" => "No Data"
            ]);
        }

        $message = $update['message']['text'] ?? '';

        $chat_id = $update['message']['chat']['id'] ?? '';

        /*
        |--------------------------------------------------------------------------
        | START
        |--------------------------------------------------------------------------
        */

        if ($message == "/start") {

            $keyboard = [
                'keyboard' => [
                    [['text' => 'OWNER']],
                    [['text' => 'ADMIN']],
                    [['text' => 'RESELLER']]
                ],
                'resize_keyboard' => true
            ];

            $this->bot('sendMessage', [
                'chat_id' => $chat_id,
                'text' => "مرحبا بك في بوت Zyphor Server لانشاء الاكواد 🚀\n\nماهي رتبتك داخل الموقع؟",
                'reply_markup' => json_encode($keyboard)
            ]);
        }

        /*
        |--------------------------------------------------------------------------
        | OWNER PANEL
        |--------------------------------------------------------------------------
        */

        elseif ($message == "OWNER") {

            $this->bot('sendMessage', [
                'chat_id' => $chat_id,
                'text' =>
"📌 لوحة OWNER

• إدارة الأدمنية
• إدارة الرصيد
• الإحصائيات
• إرسال بث
• إدارة البوت"
            ]);
        }

        /*
        |--------------------------------------------------------------------------
        | ADMIN PANEL
        |--------------------------------------------------------------------------
        */

        elseif ($message == "ADMIN") {

            $this->bot('sendMessage', [
                'chat_id' => $chat_id,
                'text' =>
"📌 لوحة ADMIN

• إدارة المستخدمين
• مراقبة السجلات
• إضافة رصيد"
            ]);
        }

        /*
        |--------------------------------------------------------------------------
        | RESELLER PANEL
        |--------------------------------------------------------------------------
        */

        elseif ($message == "RESELLER") {

            $this->bot('sendMessage', [
                'chat_id' => $chat_id,
                'text' =>
"📌 لوحة RESELLER

• إنشاء أكواد
• عرض الرصيد
• سجل العمليات"
            ]);
        }

        return $this->respond([
            "status" => true
        ]);
    }
}