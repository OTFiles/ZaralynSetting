.class Lcom/android/settings/DisplayColorTempSettings$3;
.super Landroid/database/ContentObserver;
.source "DisplayColorTempSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplayColorTempSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplayColorTempSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplayColorTempSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DisplayColorTempSettings;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 340
    iput-object p1, p0, Lcom/android/settings/DisplayColorTempSettings$3;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 343
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "==========divhee==========mColorTempObserver==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/settings/DisplayColorTempSettings$3;->this$0:Lcom/android/settings/DisplayColorTempSettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplayColorTempSettings;->updateColorTempSettings()V

    .line 345
    return-void
.end method
