 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
     <!-- Brand Logo -->
     <a href="{{ route('dashboard') }}" class="brand-link">
         <span class="brand-text font-weight-light ml-4 text-bold text-lg">TPID</span>
     </a>

     <!-- Sidebar -->
     <div class="sidebar">
         <!-- Sidebar user panel (optional) -->
         <div class="user-panel mt-3 pb-3 mb-3 d-flex">
             <div class="image">
                 <img src="{{ auth()->user()->gravatar() }}" class="img-circle elevation-2" alt="User Image">
             </div>
             <div class="info">
                 <a href="{{ route('user.edit', auth()->user()->id) }}" class="d-block">{{ auth()->user()->name }}</a>
             </div>
         </div>
         @auth
         <!-- Sidebar Menu -->
         <nav class="mt-2">
             <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                 <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

                 @can('banner-list')
                 <li class="nav-item">
                     <a href="{{ route('banner.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Banner
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('category-list')
                 <li class="nav-item">
                     <a href="{{ route('category.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Category
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('contact-list')
                 <li class="nav-item">
                     <a href="{{ route('contact.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Contact
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('event-list')
                 <li class="nav-item">
                     <a href="{{ route('event.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Event
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('gallery-list')
                 <li class="nav-item">
                     <a href="{{ route('gallery.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Gallery
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('menu-list')
                 <li class="nav-item">
                     <a href="{{ route('menu.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Menu
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('news-list')
                 <li class="nav-item">
                     <a href="{{ route('news.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             News
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('page-list')
                 <li class="nav-item">
                     <a href="{{ route('page.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Page
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('profile-list')
                 <li class="nav-item">
                     <a href="{{ route('profile.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Profile
                         </p>
                     </a>
                 </li>
                 @endcan


                 @can('role-list')
                 <li class="nav-item">
                     <a href="{{ route('roles.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Roles
                         </p>
                     </a>
                 </li>
                 @endcan
                 @can('slide-list')
                 <li class="nav-item">
                     <a href="{{ route('slide.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Slide
                         </p>
                     </a>
                 </li>
                 @endcan
                 @can('tag-list')
                 <li class="nav-item">
                     <a href="{{ route('tag.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Tag
                         </p>
                     </a>
                 </li>
                 @endcan

                 @can('user-list')
                 <li class="nav-item">
                     <a href="{{ route('user.index') }}" class="nav-link">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             Users
                         </p>
                     </a>
                 </li>
                 @endcan
                 <li class="nav-item">
                     <a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                         <i class="nav-icon fas fa-angle-right"></i>
                         <p>
                             {{ __('Logout') }}
                         </p>
                     </a>

                 </li>
             </ul>
             <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                 @csrf
             </form>
         </nav>
         <!-- /.sidebar-menu -->
         @endauth
     </div>
     <!-- /.sidebar -->
 </aside>