.class Lcom/android/settings/SettingsLauncherShortcutEnabler$4$1;
.super Ljava/lang/Object;
.source "SettingsLauncherShortcutEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherShortcutEnabler$4;->onUpdateEmptyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsLauncherShortcutEnabler$4;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherShortcutEnabler$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsLauncherShortcutEnabler$4;

    .line 298
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$4$1;->this$1:Lcom/android/settings/SettingsLauncherShortcutEnabler$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$4$1;->this$1:Lcom/android/settings/SettingsLauncherShortcutEnabler$4;

    iget-object v0, v0, Lcom/android/settings/SettingsLauncherShortcutEnabler$4;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->access$400(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    return-void
.end method
