function updateQRCode() {
  fetch('/qrcode')
    .then((response) => response.json())
    .then((data) => {
      const qrCodeUrl = data.qrImage;
      document.getElementById('qrCodeImage').src = qrCodeUrl;
    });
}

updateQRCode();

setInterval(updateQRCode, 5000);
