.class Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/network/ApnSettings;Lcom/android/settings/network/ApnSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/network/ApnSettings;
    .param p2, "x1"    # Lcom/android/settings/network/ApnSettings$1;

    .line 674
    invoke-direct {p0, p1}, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/network/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 677
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/network/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 680
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 681
    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$102(Z)Z

    .line 682
    return-void

    .line 684
    :cond_1
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/network/ApnSettings;->access$200(Lcom/android/settings/network/ApnSettings;)V

    .line 685
    iget-object v2, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {v2}, Lcom/android/settings/network/ApnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 686
    invoke-static {v1}, Lcom/android/settings/network/ApnSettings;->access$102(Z)Z

    .line 687
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/android/settings/network/ApnSettings;->access$800(Lcom/android/settings/network/ApnSettings;I)V

    .line 688
    iget-object v1, p0, Lcom/android/settings/network/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/network/ApnSettings;

    .line 690
    invoke-virtual {v1}, Lcom/android/settings/network/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120bdb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 688
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 695
    .end local v0
    :goto_0
    return-void
.end method
