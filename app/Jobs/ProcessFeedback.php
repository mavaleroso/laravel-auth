<?php

namespace App\Jobs;

use Utilities\Feedback;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class ProcessFeedback implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    private $a;
    private $b;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(string $a, string $b)
    {
        $this->a = $a;
        $this->b = $b;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {   
        send_feedback($this->a, $this->b);
    }
}
