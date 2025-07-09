<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use TCG\Voyager\Models\Setting;

class NewTemplateSettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $templateKey = 'Foodily';

        $settings = array(
            ['icon', 'Icon du site', 'image'],
            ['logo', 'Logo du site', 'image'],
            ['logo_secondary', 'Logo du site (secondary)', 'image'],
            ['preloader', 'Chargement', 'image'],
            ['store', 'Boutique', 'text'],
            ['home_banner', 'Home Banner', 'image'],
            ['about_banner', 'About Banner', 'image'],
            ['error_page_banner', 'Error Page Banner', 'image'],
        );

        foreach ($settings as $k => $s) {
            Setting::create([
                'key' => strtolower($templateKey) . '.' . $s[0],
                'display_name' => $s[1],
                'value'        => null,
                'details'      => null,
                'type'         => $s[2],
                'order'        => $k + 1,
                'group'        => $templateKey,
            ]);
        }
    }
}
