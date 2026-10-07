.class Lcom/android/settings/NavigationBarSettings$2;
.super Ljava/lang/Object;
.source "NavigationBarSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NavigationBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NavigationBarSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/NavigationBarSettings;

    .line 206
    iput-object p1, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 209
    if-nez p1, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a009a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const v1, 0x7f0a009f

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 238
    :pswitch_0    # 0x7f0a04a1
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$500(Lcom/android/settings/NavigationBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0, v2}, Lcom/android/settings/NavigationBarSettings;->access$502(Lcom/android/settings/NavigationBarSettings;Z)Z

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$400(Lcom/android/settings/NavigationBarSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$400(Lcom/android/settings/NavigationBarSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 230
    :pswitch_1    # 0x7f0a04a0
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$500(Lcom/android/settings/NavigationBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0, v2}, Lcom/android/settings/NavigationBarSettings;->access$502(Lcom/android/settings/NavigationBarSettings;Z)Z

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$400(Lcom/android/settings/NavigationBarSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 234
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$400(Lcom/android/settings/NavigationBarSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 222
    :pswitch_2    # 0x7f0a049f
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$500(Lcom/android/settings/NavigationBarSettings;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0, v2}, Lcom/android/settings/NavigationBarSettings;->access$502(Lcom/android/settings/NavigationBarSettings;Z)Z

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$400(Lcom/android/settings/NavigationBarSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettings;->access$400(Lcom/android/settings/NavigationBarSettings;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 214
    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsl_full_screen_mode_switch_action"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-virtual {v0}, Lcom/android/settings/NavigationBarSettings;->updateNavigationBarStatus()V

    .line 216
    goto :goto_0

    .line 218
    :cond_5
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsl_full_screen_mode_switch_action"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettings$2;->this$0:Lcom/android/settings/NavigationBarSettings;

    invoke-virtual {v0}, Lcom/android/settings/NavigationBarSettings;->updateNavigationBarStatus()V

    .line 220
    nop

    .line 246
    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a049f
        :pswitch_2    # 0x7f0a049f
        :pswitch_1    # 0x7f0a04a0
        :pswitch_0    # 0x7f0a04a1
    .end packed-switch
.end method
