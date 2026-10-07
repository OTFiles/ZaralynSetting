.class Lcom/android/settings/applications/AppStorageSettings$3;
.super Landroid/os/Handler;
.source "AppStorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/AppStorageSettings;

    .line 732
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 734
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStorageSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 735
    return-void

    .line 737
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 753
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->access$202(Lcom/android/settings/applications/AppStorageSettings;Z)Z

    .line 755
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0}, Lcom/android/settings/applications/AppStorageSettings;->access$400(Lcom/android/settings/applications/AppStorageSettings;)V

    goto :goto_0

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->access$102(Lcom/android/settings/applications/AppStorageSettings;Z)Z

    .line 740
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->access$202(Lcom/android/settings/applications/AppStorageSettings;Z)Z

    .line 741
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppStorageSettings;->access$300(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V

    .line 743
    :try_start_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$3$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$3$1;-><init>(Lcom/android/settings/applications/AppStorageSettings$3;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 750
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 751
    nop

    .line 758
    :goto_0
    return-void
.end method
