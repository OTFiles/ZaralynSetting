.class Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;
.super Landroid/os/AsyncTask;
.source "SettingsLauncherParentModeExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsLauncherParentModeExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadPortAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;


# direct methods
.method private constructor <init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SettingsLauncherParentModeExchange;Lcom/android/settings/SettingsLauncherParentModeExchange$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;
    .param p2, "x1"    # Lcom/android/settings/SettingsLauncherParentModeExchange$1;

    .line 250
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 250
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v1}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$300(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getAllAppNoSystemApp(Landroid/content/Context;)V

    .line 263
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .line 268
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->onlyUpdateAdapterNbDuibiItemStatus()V

    .line 274
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 275
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 253
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 254
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 250
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsLauncherParentModeExchange$ReloadPortAppsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Void;

    .line 278
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 279
    return-void
.end method
