.class Lcom/android/settings/SettingsLauncherShortcutEnabler$4;
.super Ljava/lang/Object;
.source "SettingsLauncherShortcutEnabler.java"

# interfaces
.implements Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter$OnNbNotifyHistoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsLauncherShortcutEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 283
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$4;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILjava/lang/Object;)V
    .locals 0
    .param p1, "forcusposition"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 290
    return-void
.end method

.method public onUpdateEmptyView()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$4;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->getMsgHandler()Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsLauncherShortcutEnabler$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLauncherShortcutEnabler$4$1;-><init>(Lcom/android/settings/SettingsLauncherShortcutEnabler$4;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    return-void
.end method

.method public onUpdateStatusView()V
    .locals 0

    .line 294
    return-void
.end method
