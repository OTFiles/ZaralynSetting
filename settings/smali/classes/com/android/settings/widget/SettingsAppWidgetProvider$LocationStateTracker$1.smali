.class Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;
.super Landroid/os/AsyncTask;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->requestStateChange(Landroid/content/Context;Z)V
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
.field final synthetic this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    .line 550
    iput-object p1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iput-object p2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Void;

    .line 553
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    const-string v1, "user"

    .line 554
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 555
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    const-string v2, "location"

    .line 557
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 559
    .local v1, "lm":Landroid/location/LocationManager;
    invoke-virtual {v1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    .line 560
    .local v2, "currentLocationEnabled":Z
    nop

    .line 561
    xor-int/lit8 v3, v2, 0x1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 560
    invoke-virtual {v1, v3, v4}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 562
    invoke-virtual {v1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 564
    .end local v1
    .end local v2
    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 550
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 569
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->this$0:Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    .line 571
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 569
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 572
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 573
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 550
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
