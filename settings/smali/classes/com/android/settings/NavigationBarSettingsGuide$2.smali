.class Lcom/android/settings/NavigationBarSettingsGuide$2;
.super Ljava/lang/Object;
.source "NavigationBarSettingsGuide.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NavigationBarSettingsGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NavigationBarSettingsGuide;


# direct methods
.method constructor <init>(Lcom/android/settings/NavigationBarSettingsGuide;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/NavigationBarSettingsGuide;

    .line 214
    iput-object p1, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 217
    if-nez p1, :cond_0

    .line 218
    return-void

    .line 220
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

    .line 248
    :pswitch_0    # 0x7f0a04a1
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$500(Lcom/android/settings/NavigationBarSettingsGuide;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0, v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$502(Lcom/android/settings/NavigationBarSettingsGuide;Z)Z

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 240
    :pswitch_1    # 0x7f0a04a0
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$500(Lcom/android/settings/NavigationBarSettingsGuide;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0, v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$502(Lcom/android/settings/NavigationBarSettingsGuide;Z)Z

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 232
    :pswitch_2    # 0x7f0a049f
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$500(Lcom/android/settings/NavigationBarSettingsGuide;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0, v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$502(Lcom/android/settings/NavigationBarSettingsGuide;Z)Z

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->access$400(Lcom/android/settings/NavigationBarSettingsGuide;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0, v3}, Lcom/android/settings/NavigationBarSettingsGuide;->access$602(Lcom/android/settings/NavigationBarSettingsGuide;I)I

    .line 224
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->updateNavigationBarStatus()V

    .line 225
    goto :goto_0

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-static {v0, v2}, Lcom/android/settings/NavigationBarSettingsGuide;->access$602(Lcom/android/settings/NavigationBarSettingsGuide;I)I

    .line 229
    iget-object v0, p0, Lcom/android/settings/NavigationBarSettingsGuide$2;->this$0:Lcom/android/settings/NavigationBarSettingsGuide;

    invoke-virtual {v0}, Lcom/android/settings/NavigationBarSettingsGuide;->updateNavigationBarStatus()V

    .line 230
    nop

    .line 256
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
