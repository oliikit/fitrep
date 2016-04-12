$(function() {
  new Morris.Line({
    element: 'workout-time-chart',
    data: $('#workout-time-chart').data("workoutSessions"),
    xkey: 'completed_date',
    ykeys: ['workout_time'],
    labels: ['Time'],
    hideHover: 'auto',
    resize: true
  });

  var dataArr = [];
  var obj = $('#focus-chart').data("focus");
  for ( var prop in obj) {
    dataArr.push({"label": prop, "value": obj[prop]});
  }


  new Morris.Donut({
    element: 'focus-chart',
    data: dataArr
  });
});
