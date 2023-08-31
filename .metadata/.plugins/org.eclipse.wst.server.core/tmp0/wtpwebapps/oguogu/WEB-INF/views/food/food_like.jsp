<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>좋아요 버튼</title>
<style>
  .heart-button {
    display: inline-block;
    background-color: transparent;
    border: none;
    cursor: pointer;
  }
  .heart-icon {
    width: 20px;
    height: 20px;
    fill: red; /* 하트 색상 */
  }
</style>
</head>
<body>
  <button class="heart-button" onclick="toggleHeart()">
    <svg class="heart-icon" viewBox="0 0 24 24">
      <path d="M12 21.35l-1.45-1.32C5.4 16.36 2 13.11 2 9.5 2 6.42 4.42 4 7.5 4c1.74 0 3.41.81 4.5 2.09C15.09 4.81 16.76 4 18.5 4 21.58 4 24 6.42 24 9.5c0 3.61-3.4 6.86-8.55 10.54L12 21.35z"/>
    </svg>
  </button>

  <script>
    let isLiked = false;

    function toggleHeart() {
      isLiked = !isLiked;
      const heartIcon = document.querySelector('.heart-icon');
      if (isLiked) {
        heartIcon.style.fill = 'red';
      } else {
        heartIcon.style.fill = 'black';
      }
    }
  </script>
</body>
</html>