.class Lcom/android/settings/SettingsLauncherParentModeExchange$4;
.super Ljava/lang/Object;
.source "SettingsLauncherParentModeExchange.java"

# interfaces
.implements Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsLauncherParentModeExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherParentModeExchange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 282
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(II)Z
    .locals 1
    .param p1, "srcPosition"    # I
    .param p2, "targetPosition"    # I

    .line 310
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getFilterNbHistory()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getFilterNbHistory()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->notifyItemMoved(II)V

    .line 315
    const/4 v0, 0x1

    return v0

    .line 317
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSwiped(I)V
    .locals 1
    .param p1, "forcusposition"    # I

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getFilterNbHistory()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->getFilterNbHistory()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$4;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->notifyItemRemoved(I)V

    .line 305
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    .end local v0
    :goto_0
    return-void
.end method
