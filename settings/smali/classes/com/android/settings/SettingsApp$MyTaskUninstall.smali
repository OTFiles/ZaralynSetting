.class public Lcom/android/settings/SettingsApp$MyTaskUninstall;
.super Landroid/os/AsyncTask;
.source "SettingsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTaskUninstall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsApp;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsApp;

    .line 1122
    iput-object p1, p0, Lcom/android/settings/SettingsApp$MyTaskUninstall;->this$0:Lcom/android/settings/SettingsApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 1125
    const-string v0, ""

    const-string v1, "doInBackground(Params... params) called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->uninstallPackage(Ljava/lang/String;)V

    .line 1127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1122
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsApp$MyTaskUninstall;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
