.class Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;
.super Ljava/lang/Object;
.source "SettingsLauncherAllAboutReadboy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsLauncherAllAboutReadboy;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsLauncherAllAboutReadboy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    .line 304
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iget v0, v0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->mIsNowParentManagerShowing:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iget v0, v0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iget v0, v0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iget v0, v0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    const/16 v2, 0x271a

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->runCheckParentPassword(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/settings/SettingsLauncherAllAboutReadboy$3;->this$0:Lcom/android/settings/SettingsLauncherAllAboutReadboy;

    iput v1, v0, Lcom/android/settings/SettingsLauncherAllAboutReadboy;->isParentPasswordCheckPassed:I

    .line 312
    :cond_0
    return-void
.end method
