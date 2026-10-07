.class Lcom/android/settings/SettingsLauncherShortcutEnabler$5;
.super Ljava/lang/Object;
.source "SettingsLauncherShortcutEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherShortcutEnabler;->onClick(Landroid/view/View;)V
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

    .line 324
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$5;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$5;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->access$500(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$5;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->access$100(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$5;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->access$200(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$5;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-static {v1}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->access$500(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->updateNowNbStoredHistoryFilter(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$5;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherShortcutEnabler;->access$200(Lcom/android/settings/SettingsLauncherShortcutEnabler;)Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/shortcutenable/ShortcutEnableAppListAdapter;->onlyUpdateAdapterNbDuibiItemStatus()V

    .line 331
    return-void
.end method
