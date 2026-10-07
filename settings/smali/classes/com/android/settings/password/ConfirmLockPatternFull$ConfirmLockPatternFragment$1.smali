.class Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPatternFull.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    .line 168
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRowTranslationScale(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "numRows"    # I

    .line 171
    sub-int v0, p2, p1

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    return v0
.end method
