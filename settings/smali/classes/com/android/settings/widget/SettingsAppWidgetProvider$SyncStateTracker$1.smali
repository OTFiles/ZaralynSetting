.class Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;ZZLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    .line 608
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    iput-boolean p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    iput-boolean p3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$sync:Z

    iput-object p4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Void;

    .line 612
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$desiredState:Z

    if-eqz v0, :cond_1

    .line 613
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$sync:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 614
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 616
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 620
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$sync:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 621
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 623
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 608
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 628
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    .line 630
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 628
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 632
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 608
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
