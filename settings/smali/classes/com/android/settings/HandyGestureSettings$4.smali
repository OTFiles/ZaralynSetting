.class Lcom/android/settings/HandyGestureSettings$4;
.super Ljava/lang/Object;
.source "HandyGestureSettings.java"

# interfaces
.implements Lcom/android/settings/widget/QQAssetAnimView$OwnerActivtiyState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HandyGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HandyGestureSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/HandyGestureSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/HandyGestureSettings;

    .line 360
    iput-object p1, p0, Lcom/android/settings/HandyGestureSettings$4;->this$0:Lcom/android/settings/HandyGestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bHidedScreen(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mAnimTagObj"    # Ljava/lang/String;

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public bOwnerActPause(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mAnimTagObj"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/android/settings/HandyGestureSettings$4;->this$0:Lcom/android/settings/HandyGestureSettings;

    iget-boolean v0, v0, Lcom/android/settings/HandyGestureSettings;->isOnPaused:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/HandyGestureSettings$4;->bHidedScreen(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public endAnyTimes(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tagObj"    # Ljava/lang/String;

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public endOneLoop(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mAnimTagObj"    # Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    return v0
.end method
