.class Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockPatternFull.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    .line 415
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$2;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 418
    return-void
.end method
