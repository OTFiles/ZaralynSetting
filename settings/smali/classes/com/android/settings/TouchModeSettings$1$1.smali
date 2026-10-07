.class Lcom/android/settings/TouchModeSettings$1$1;
.super Ljava/lang/Object;
.source "TouchModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TouchModeSettings$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/TouchModeSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/TouchModeSettings$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/TouchModeSettings$1;

    .line 64
    iput-object p1, p0, Lcom/android/settings/TouchModeSettings$1$1;->this$1:Lcom/android/settings/TouchModeSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings$1$1;->this$1:Lcom/android/settings/TouchModeSettings$1;

    iget-object v0, v0, Lcom/android/settings/TouchModeSettings$1;->this$0:Lcom/android/settings/TouchModeSettings;

    invoke-static {v0}, Lcom/android/settings/TouchModeSettings;->access$000(Lcom/android/settings/TouchModeSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===divhee=======111=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/TouchModeSettings;->readProcFile()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/settings/TouchModeSettings$1$1;->this$1:Lcom/android/settings/TouchModeSettings$1;

    iget-object v0, v0, Lcom/android/settings/TouchModeSettings$1;->this$0:Lcom/android/settings/TouchModeSettings;

    invoke-static {}, Lcom/android/settings/TouchModeSettings;->readProcFile()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/TouchModeSettings;->touchModePenSetChecked(Z)V

    .line 71
    :cond_1
    return-void
.end method
