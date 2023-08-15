<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace app\components;

/**
 * Description of Helper
 *
 * @author Computesta
 */
class Helper {

    public static function penyebut($nilai) {
        $nilai = abs($nilai);
        $huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
        $temp = "";
        if ($nilai < 12) {
            $temp = " " . $huruf[$nilai];
        } else if ($nilai < 20) {
            $temp = self::penyebut($nilai - 10) . " belas";
        } else if ($nilai < 100) {
            $temp = self::penyebut($nilai / 10) . " puluh" . self::penyebut($nilai % 10);
        } else if ($nilai < 200) {
            $temp = " seratus" . self::penyebut($nilai - 100);
        } else if ($nilai < 1000) {
            $temp = self::penyebut($nilai / 100) . " ratus" . self::penyebut($nilai % 100);
        } else if ($nilai < 2000) {
            $temp = " seribu" . self::penyebut($nilai - 1000);
        } else if ($nilai < 1000000) {
            $temp = self::penyebut($nilai / 1000) . " ribu" . self::penyebut($nilai % 1000);
        } else if ($nilai < 1000000000) {
            $temp = self::penyebut($nilai / 1000000) . " juta" . self::penyebut($nilai % 1000000);
        } else if ($nilai < 1000000000000) {
            $temp = self::penyebut($nilai / 1000000000) . " milyar" . self::penyebut(fmod($nilai, 1000000000));
        } else if ($nilai < 1000000000000000) {
            $temp = self::penyebut($nilai / 1000000000000) . " trilyun" . self::penyebut(fmod($nilai, 1000000000000));
        }
        return $temp;
    }

    public static function terbilang($nilai) {
        if ($nilai < 0) {
            $hasil = "minus " . trim(self::penyebut($nilai));
        } else {
            $hasil = trim(self::penyebut($nilai));
        }
        return strtoupper($hasil) . " RUPIAH";
    }

    public static function formatRupiah($amount, $decimal=0){
        return number_format($amount, $decimal, ".", ",");
    }
    
    public static function indonesianMonth(){
        return [
            1 => 'Januari',
            2 => 'Februari',
            3 => 'Maret',
            4 => 'April',
            5 => 'Mei',
            6 => 'Juni',
            7 => 'Juli',
            8 => 'Agustus',
            9 => 'September',
            10 => 'Oktober',
            11 => 'November',
            12 => 'Desember'
        ];
    }
    
    public static function indonesianDay(){
        return [
            'Sun' => 'Minggu',
            'Mon' => 'Senin',
            'Tue' => 'Selasa',
            'Wed' => 'Rabu',
            'Thu' => 'Kamis',
            'Fri' => 'Jumat',
            'Sat' => 'Sabtu',
        ];
    }

    public static function formatTanggal($date, $type='sort'){
        if($type == 'sort'){
            return date('d/m/Y', strtotime($date));
        }else if($type == 'long'){
            return self::indonesianDay()[date('D', strtotime($date))] . ", " . date('d', strtotime($date)) . " " . self::indonesianMonth()[date('n', strtotime($date))] . " " . date('Y', strtotime($date));
        }else{
            return date('d/m/Y', strtotime($date));
        }
    }

    /**
     * Generate a URL friendly "slug" from a given string.
     *
     * @param  string  $title
     * @param  string  $separator
     * @return string
     */
    public static function CreateSlug($title, $separator = '-')
    {
        $title = static::ascii($title);

        // Convert all dashes/underscores into separator
        $flip = $separator == '-' ? '_' : '-';

        $title = preg_replace('!['.preg_quote($flip).']+!u', $separator, $title);

        // Remove all characters that are not the separator, letters, numbers, or whitespace.
        $title = preg_replace('![^'.preg_quote($separator).'\pL\pN\s]+!u', '', mb_strtolower($title));

        // Replace all separator characters and whitespace by a single separator
        $title = preg_replace('!['.preg_quote($separator).'\s]+!u', $separator, $title);

        return trim($title, $separator);
    }
}
