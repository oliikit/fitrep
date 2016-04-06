$(function() {
  new Morris.Line({
    element: 'workout-time-chart',
    data: $('#workout-time-chart').data(workout_sessions),
    xkey: 'created_at',
    ykeys: ['workout_time'],
    labels: ['Date'],
    hideHover: 'auto',
    resize: true
  });
});
