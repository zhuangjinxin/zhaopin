$(function() {
  $('#doc-prompt-toggle').on('click', function() {
    $('#my-prompt').modal({
      relatedTarget: this,
      onConfirm: function(e) {
        alert('你输入的是：' + e.data || '')
      },
      onCancel: function(e) {
        alert('不想说!');
      }
    });
  });
});