.class Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$2;
.super Ljava/lang/Object;
.source "SettingsLauncherAllAboutReadboy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->onInitBtns(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;

    .line 217
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$2;->this$1:Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$2;->this$1:Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;

    iget-object v2, v2, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    invoke-static {v2}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->access$000(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$2;->this$1:Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;

    iget-object v0, v0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->access$002(Lcom/android/settings/SettingsLauncherAllAboutReadboy;J)J

    .line 222
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2$2;->this$1:Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;

    iget-object v0, v0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$2;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->setLauncherNewYearSkinStatus(Z)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    const v1, 0x7f120ba5

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsApp;->showAppToastLong(I)V

    .line 226
    :goto_0
    return-void
.end method
