.class Lcom/android/settings/SettingsLauncherParentModeExchange$5;
.super Ljava/lang/Object;
.source "SettingsLauncherParentModeExchange.java"

# interfaces
.implements Lcom/android/settings/parentlauncher/ParentLauncherEnableAppListAdapter$OnNbNotifyHistoryListener;


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

    .line 321
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILjava/lang/Object;)V
    .locals 0
    .param p1, "forcusposition"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public onUpdateEmptyView(I)V
    .locals 4
    .param p1, "number"    # I

    .line 336
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-virtual {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->getMsgHandler()Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;-><init>(Lcom/android/settings/SettingsLauncherParentModeExchange$5;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 344
    return-void
.end method

.method public onUpdateStatusView()V
    .locals 0

    .line 332
    return-void
.end method
