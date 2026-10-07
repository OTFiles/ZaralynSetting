.class Lcom/android/settings/SettingsLauncherParentModeExchange$7;
.super Ljava/lang/Object;
.source "SettingsLauncherParentModeExchange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherParentModeExchange;->onClick(Landroid/view/View;)V
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

    .line 375
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$7;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$7;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$7;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v1}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$700(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->updateNowNbStoredHistoryFilter(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$7;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$200(Lcom/android/settings/SettingsLauncherParentModeExchange;)Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter;->onlyUpdateAdapterNbDuibiItemStatus()V

    .line 380
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$7;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-virtual {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->hideSoftKeyboard()V

    .line 381
    return-void
.end method
