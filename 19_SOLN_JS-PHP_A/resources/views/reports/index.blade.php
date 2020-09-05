@extends('layouts.app')

@section('content')
    <div class="border-bottom mb-3 pt-3 pb-2">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
            <h1 class="h2">{{$event->name}}</h1>
        </div>
        <span class="h6">{{$event->date}}</span>
    </div>

    <div class="mb-3 pt-3 pb-2">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center">
            <h2 class="h4">Room Capacity</h2>
        </div>
    </div>

    <!-- TODO create chart here -->
    <canvas id="myChart"></canvas>

    {{--

red
                        'rgba(255, 99, 132, 0.5)',
blue
                        'rgba(54, 162, 235, 0.5)',
green
                        'rgba(75, 192, 192, 0.5)',

    --}}

    <script src="{{asset('public/Chart.js-2.8.0/dist/Chart.js')}}"></script>
    <script>
        const data = @json($data);

        const colors = data.sessions.map((session,i) => {
            if ( data.capacity[i] < data.attendee[i] ) {
                return 'rgba(255, 99, 132, 0.5)';
            } else {
                return 'rgba(75, 192, 192, 0.5)';
            }
        });

        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: data.sessions,
                datasets: [{
                    label: 'Attendee',
                    data: data.attendee,
                    backgroundColor: colors,
                },{
                    label: 'Capacity',
                    data: data.capacity,
                    backgroundColor: 'rgba(54, 162, 235, 0.5)',
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </script>
@endsection
