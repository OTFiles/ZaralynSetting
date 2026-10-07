.class public final enum Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPatternFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

.field public static final enum ChoiceTooShort:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

.field public static final enum FirstChoiceValid:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

.field public static final enum HelpScreen:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field final headerMessage:I

.field final leftMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

.field final message:I

.field final messageForFingerprint:I

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 348
    new-instance v10, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    sget-object v6, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v7, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const/4 v2, 0x0

    const v3, 0x7f1207ec

    const v4, 0x7f120806

    const v5, 0x7f120843

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v10, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 354
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const-string v12, "HelpScreen"

    sget-object v17, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v18, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const v16, 0x7f12084e

    const/16 v19, -0x1

    const/16 v20, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 357
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const-string v2, "ChoiceTooShort"

    sget-object v7, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v8, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const/4 v3, 0x2

    const v4, 0x7f1207ec

    const v5, 0x7f120806

    const v6, 0x7f120840

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 363
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const-string v12, "FirstChoiceValid"

    sget-object v17, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v18, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const/4 v13, 0x3

    const v14, 0x7f1207ec

    const v15, 0x7f120806

    const v16, 0x7f12083f

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 368
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const-string v2, "NeedToConfirm"

    sget-object v7, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v8, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const/4 v3, 0x4

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v6, 0x7f12083c

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 372
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const-string v12, "ConfirmWrong"

    sget-object v17, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v18, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const/4 v13, 0x5

    const/4 v14, -0x1

    const/4 v15, -0x1

    const v16, 0x7f12083d

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 376
    new-instance v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const-string v2, "ChoiceConfirmed"

    sget-object v7, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v8, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    const/4 v3, 0x6

    const v6, 0x7f12083e

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    .line 346
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0
    .param p3, "messageForFingerprint"    # I
    .param p4, "message"    # I
    .param p5, "headerMessage"    # I
    .param p6, "leftMode"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;
    .param p7, "rightMode"    # Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;
    .param p8, "footerMessage"    # I
    .param p9, "patternEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;",
            "Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;",
            "IZ)V"
        }
    .end annotation

    .line 394
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 395
    iput p5, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 396
    iput p3, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->messageForFingerprint:I

    .line 397
    iput p4, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->message:I

    .line 398
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$LeftButtonMode;

    .line 399
    iput-object p7, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$RightButtonMode;

    .line 400
    iput p8, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 401
    iput-boolean p9, p0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 402
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 346
    const-class v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;
    .locals 1

    .line 346
    sget-object v0, Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPatternFull$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
