.class final enum Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPatternFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RightButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Confirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum ConfirmDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Continue:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum ContinueDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Ok:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 324
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Continue"

    const v2, 0x7f120907

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    .line 325
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ContinueDisabled"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    .line 326
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Confirm"

    const v2, 0x7f12083a

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    .line 327
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ConfirmDisabled"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    .line 328
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Ok"

    const/4 v2, 0x4

    const v7, 0x104000a

    invoke-direct {v0, v1, v2, v7, v4}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    .line 323
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->$VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

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

    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 335
    iput p3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->text:I

    .line 336
    iput-boolean p4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    .line 337
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 323
    const-class v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;
    .locals 1

    .line 323
    sget-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->$VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method
