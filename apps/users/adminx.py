import xadmin
from .models import EmailVerifyRecord,Banner
from xadmin import views

#xadmin中这里是继承object,不是继承admin
class EmailVerifyRecordAdmin(object):
    list_display = ['code','email','send_type','send_time']
    search_fields = ['code','email','send_type','send_time']
    list_filter = ['code','email','send_type','send_time']
    
class BannerAdmin(object):
    list_display = ['title','image','url','index','add_time']
    search_fields = ['title','image','url','index']
    list_filter = ['title','image','url','index','add_time']


# class BaseSetting(object):
#     #开启主题功能
#     enable_themes = True
#     use_bootswatch = True


#全局配置
class GlobalSettings(object):
    site_title = '思非科技后台管理系统'
    site_footer = 'micol-company'
    menu_style = 'accordion'
xadmin.site.register(EmailVerifyRecord ,EmailVerifyRecordAdmin)
xadmin.site.register(Banner,BannerAdmin)
# xadmin.site.register(views.BaseAdminView)
xadmin.site.register(views.CommAdminView,GlobalSettings)
