<?php

namespace App\Console\Commands;

use App\Models\Uraian;
use Illuminate\Console\Command;

class perbaikandata extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'perbaikandata';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $data = Uraian::get();
        foreach ($data as $key => $item) {
            $item->update([
                'p_januari_fisik' => $item->p_januari_keuangan == 0 ? 0 : ($item->p_januari_keuangan / $item->dpa) * 100,
                'p_februasi_fisik' => $item->p_februasi_keuangan == 0 ? 0 : ($item->p_februasi_keuangan / $item->dpa) * 100,
                'p_maret_fisik' => $item->p_maret_keuangan == 0 ? 0 : ($item->p_maret_keuangan / $item->dpa) * 100,
                'p_april_fisik' => $item->p_april_keuangan == 0 ? 0 : ($item->p_april_keuangan / $item->dpa) * 100,
                'p_mei_fisik' => $item->p_mei_keuangan == 0 ? 0 : ($item->p_mei_keuangan / $item->dpa) * 100,
                'p_juni_fisik' => $item->p_juni_keuangan == 0 ? 0 : ($item->p_juni_keuangan / $item->dpa) * 100,
                'p_juli_fisik' => $item->p_juli_keuangan == 0 ? 0 : ($item->p_juli_keuangan / $item->dpa) * 100,
                'p_agustus_fisik' => $item->p_agustus_keuangan == 0 ? 0 : ($item->p_agustus_keuangan / $item->dpa) * 100,
                'p_september_fisik' => $item->p_september_keuangan == 0 ? 0 : ($item->p_september_keuangan / $item->dpa) * 100,
                'p_oktober_fisik' => $item->p_oktober_keuangan == 0 ? 0 : ($item->p_oktober_keuangan / $item->dpa) * 100,
                'p_november_fisik' => $item->p_november_keuangan == 0 ? 0 : ($item->p_november_keuangan / $item->dpa) * 100,
                'p_desember_fisik' => $item->p_desember_keuangan == 0 ? 0 : ($item->p_desember_keuangan / $item->dpa) * 100
            ]);
        }
    }
}
