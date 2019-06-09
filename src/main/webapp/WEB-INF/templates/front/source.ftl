<#import "layout/categoryLayout.ftl" as defaultLayout>
<@defaultLayout.htmlHead title="模板源码">
<#--css-->
    <link rel="stylesheet" href="/static/front_category1/css/main.css">

<link rel="stylesheet" href="/static/front_category1/dist/sortable.min.css">

<script type="text/javascript" src="/static/front_category1/dist/sortable.min.js"></script>
<#--css end-->
</@defaultLayout.htmlHead>
<@defaultLayout.htmlBody>
    <main class="sortable">
        <div class="container">
            <div class="wrapper">
                <ul class="sortable__nav nav">
                    <li>
                        <a data-sjslink="all" class="nav__link">
                            所有
                        </a>
                    </li>
                    <li>
                        <a data-sjslink="flatty" class="nav__link">
                            扁平化
                        </a>
                    </li>
                    <li>
                        <a data-sjslink="funny" class="nav__link">
                            创意
                        </a>
                    </li>
                </ul>
                <div id="sortable" class="sjs-default">
                    <div data-sjsel="flatty">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-1.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 1</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet, eius, asperiores. Incidunt sapiente est quae iure...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-2.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 2</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum vitae necessitatibus, dolorem similique vero explicabo...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-3.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 3</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo, placeat voluptate, fuga tenetur eos ducimus animi porro...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-4.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 4</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit doloremque quisquam, obcaecati unde nam est quos...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-5.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 5</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse corporis hic minima nisi reprehenderit...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-6.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 6</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel voluptatibus, id, deserunt inventore...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-7.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 7</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rerum enim beatae vero culpa, fuga, magni sunt dolores nam...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="flatty">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-8.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 8</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repudiandae numquam, blanditiis necessitatibus...
                                </p>
                            </div>
                        </div>
                    </div>
                    <div data-sjsel="funny">
                        <div class="card">
                            <img class="card__picture" src="/static/front_category1/images/item-9.jpg" alt="">
                            <div class="card-infos">
                                <h2 class="card__title">Example 9</h2>
                                <p class="card__text">
                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur adipisci voluptatum laborum officiis...
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</@defaultLayout.htmlBody>
<@defaultLayout.htmlScript>
    <script type="text/javascript">
        document.querySelector('#sortable').sortablejs()
    </script>
</@defaultLayout.htmlScript>