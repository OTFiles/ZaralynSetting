.class Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1$1;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    .line 285
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1$1;->this$1:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->access$400(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 289
    return-void
.end method
