.class public final synthetic Lcom/android/settings/password/-$$Lambda$ConfirmLockPatternFull$ConfirmLockPatternFragment$OrohJIWvNAGq8RxIFb5DvOfkoM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/password/ConfirmLockPatternFull;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/ConfirmLockPatternFull;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPatternFull$ConfirmLockPatternFragment$OrohJIWvNAGq8RxIFb5DvOfkoM0;->f$0:Lcom/android/settings/password/ConfirmLockPatternFull;

    iput-object p2, p0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPatternFull$ConfirmLockPatternFragment$OrohJIWvNAGq8RxIFb5DvOfkoM0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPatternFull$ConfirmLockPatternFragment$OrohJIWvNAGq8RxIFb5DvOfkoM0;->f$0:Lcom/android/settings/password/ConfirmLockPatternFull;

    iget-object v1, p0, Lcom/android/settings/password/-$$Lambda$ConfirmLockPatternFull$ConfirmLockPatternFragment$OrohJIWvNAGq8RxIFb5DvOfkoM0;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/settings/password/ConfirmLockPatternFull$ConfirmLockPatternFragment;->lambda$startDisappearAnimation$0(Lcom/android/settings/password/ConfirmLockPatternFull;Landroid/content/Intent;)V

    return-void
.end method
