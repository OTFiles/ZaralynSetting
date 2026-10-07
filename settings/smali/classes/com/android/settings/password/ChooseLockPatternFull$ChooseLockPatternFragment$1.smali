.class Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockPatternFull.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


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

    .line 235
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120841

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$200(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$200(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$300(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$400(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$500(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$500(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1$1;-><init>(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 289
    :cond_1
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$000(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 244
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$100(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$100(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$100(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$100(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$100(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " when entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 257
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    goto :goto_2

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 260
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    goto :goto_2

    .line 248
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 250
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 251
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    goto :goto_2

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;)V

    .line 266
    :goto_2
    return-void

    .line 248
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;->access$000(Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 239
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$1;->patternInProgress()V

    .line 240
    return-void
.end method
