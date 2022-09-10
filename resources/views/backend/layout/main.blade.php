<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  @include('backend.layout.head')
  @yield('head')
</head>
<body class="bg-gray-200">
  @include('backend.layout.sidebar')
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    @include('backend.layout.header')
    <div class="container-fluid py-4">
      @yield('content')
      @include('backend.layout.footer')
    </div>
  </main>
  @include('backend.layout.script')
  @yield('script')
</body>
</html>