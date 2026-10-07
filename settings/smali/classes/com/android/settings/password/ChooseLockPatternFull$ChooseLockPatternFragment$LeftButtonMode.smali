.class final enum Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPatternFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LeftButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum Retry:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum RetryDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 302
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f120845

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    .line 303
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "RetryDisabled"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    .line 304
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    .line 301
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->RetryDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "text"    # I
    .param p4, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 312
    iput p3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 313
    iput-boolean p4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    .line 314
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 301
    const-class v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .line 301
    sget-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->$VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method
