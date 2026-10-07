.class public Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;
.super Landroid/os/AsyncTask;
.source "SettingsBootCompletedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsBootCompletedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "bdcReceiver_ForzenThawUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsBootCompletedReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsBootCompletedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsBootCompletedReceiver;

    .line 1447
    iput-object p1, p0, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1447
    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;->doInBackground([Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Landroid/content/Intent;

    .line 1450
    iget-object v0, p0, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;->this$0:Lcom/android/settings/SettingsBootCompletedReceiver;

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsBootCompletedReceiver;->autoAssistForzenAppsThawApps(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1451
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1447
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsBootCompletedReceiver$bdcReceiver_ForzenThawUpdater;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/String;

    .line 1457
    return-void
.end method
