<?php

namespace App\Traits;


trait ApiResponser
{
    protected function successResponse($data, $code = 200)
    {
        return response()->json($data, $code);
    }

    protected function errorResponse($message, $code)
    {
        return response()->json(['errors' => $message, 'code' => $code], $code);
    }

    protected function showMessage($message, $code = 200)
    {
        return $this->successResponse(['data' => $message], $code);
    }

    protected function successResponseData($data, $code = 200)
    {
        return response()->json(['data' => $data, 'code' => $code], $code);
    }
}
