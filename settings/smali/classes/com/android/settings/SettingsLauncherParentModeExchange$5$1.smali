.class Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;
.super Ljava/lang/Object;
.source "SettingsLauncherParentModeExchange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherParentModeExchange$5;->onUpdateEmptyView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsLauncherParentModeExchange$5;

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherParentModeExchange$5;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsLauncherParentModeExchange$5;

    .line 336
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;->this$1:Lcom/android/settings/SettingsLauncherParentModeExchange$5;

    iput p2, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;->val$number:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;->this$1:Lcom/android/settings/SettingsLauncherParentModeExchange$5;

    iget-object v0, v0, Lcom/android/settings/SettingsLauncherParentModeExchange$5;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$400(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;->val$number:I

    if-lez v1, :cond_0

    const v1, 0x7f12014e

    goto :goto_0

    :cond_0
    const v1, 0x7f120b77

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;->this$1:Lcom/android/settings/SettingsLauncherParentModeExchange$5;

    iget-object v0, v0, Lcom/android/settings/SettingsLauncherParentModeExchange$5;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$500(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;->this$1:Lcom/android/settings/SettingsLauncherParentModeExchange$5;

    iget-object v0, v0, Lcom/android/settings/SettingsLauncherParentModeExchange$5;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    invoke-static {v0}, Lcom/android/settings/SettingsLauncherParentModeExchange;->access$600(Lcom/android/settings/SettingsLauncherParentModeExchange;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$5$1;->val$number:I

    if-lez v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    return-void
.end method
