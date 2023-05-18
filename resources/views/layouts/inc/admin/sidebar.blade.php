<aside class="sidebar-wrapper">
            <div class="sidebar sidebar-collapse" id="sidebar">
                <div class="sidebar__menu-group">
                    <ul class="sidebar_nav">
                        <li class="menu-title">
                            <span>Main menu</span>
                        </li>

                        <li>
                            <a href="{{ url('admin/dashboard') }}" class="{{ Request::is('admin/dashboard') ? 'active':'' }}">
                                <span data-feather="home" class="nav-icon"></span>
                                <span class="menu-text">Dashboard</span>
                            </a>
                        </li>

                        <li>
                            <a href="{{ url('admin/orders') }}" class="{{ Request::is('admin/orders') ? 'active':'' }}">
                                <span data-feather="shopping-bag" class="nav-icon"></span>
                                <span class="menu-text">Orders</span>
                            </a>
                        </li>

                        <li class="has-child">
                            <a href="#" class="{{ Request::is('admin/categories*') ? 'active':'' }}">
                                <span data-feather="list" class="nav-icon"></span>
                                <span class="menu-text">Categories</span>
                                <span class="toggle-icon"></span>
                            </a>
                            <ul>
                                <li class="l_sidebar">
                                    <a href="{{ url('admin/categories/create') }}">Add Category</a>
                                </li>
                                <li class="l_sidebar">
                                    <a href="{{ url('admin/categories') }}">View Category</a>
                                </li>
                            </ul>
                        </li>

                        <li class="has-child">
                            <a href="#" class="{{ Request::is('admin/products*') ? 'active':'' }}">
                                <span data-feather="shopping-bag" class="nav-icon"></span>
                                <span class="menu-text">Products</span>
                                <span class="toggle-icon"></span>
                            </a>
                            <ul>
                                <li class="l_sidebar">
                                    <a href="{{ url('admin/products/create') }}">Add Product</a>
                                </li>
                                <li class="l_sidebar">
                                    <a href="{{ url('admin/products') }}">View Product</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a href="{{ url('admin/brands') }}" class="{{ Request::is('admin/brands') ? 'active':'' }}">
                                <span data-feather="list" class="nav-icon"></span>
                                <span class="menu-text">Brands</span>
                            </a>
                        </li>

                        <li>
                            <a href="{{ url('admin/colors') }}" class="{{ Request::is('admin/colors') ? 'active':'' }}">
                                <span data-feather="list" class="nav-icon"></span>
                                <span class="menu-text">Colors</span>
                            </a>
                        </li>

                        <li>
                            <a href="{{ url('admin/users') }}" class="{{ Request::is('admin/users') ? 'active':'' }}">
                                <span data-feather="users" class="nav-icon"></span>
                                <span class="menu-text">Users</span>
                            </a>
                        </li>

                        <li>
                            <a href="{{ url('admin/sliders') }}" class="{{ Request::is('admin/sliders') ? 'active':'' }}">
                                <span data-feather="sliders" class="nav-icon"></span>
                                <span class="menu-text">Home Slider</span>
                            </a>
                        </li>

                        <li>
                            <a href="{{ url('admin/settings') }}" class="{{ Request::is('admin/settings') ? 'active':'' }}">
                                <span data-feather="settings" class="nav-icon"></span>
                                <span class="menu-text">Site Setting</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </aside>
