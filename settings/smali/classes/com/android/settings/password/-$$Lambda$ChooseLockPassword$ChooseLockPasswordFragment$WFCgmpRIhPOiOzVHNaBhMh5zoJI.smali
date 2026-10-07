.class public final synthetic Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;

    invoke-direct {v0}, Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;-><init>()V

    sput-object v0, Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;->INSTANCE:Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->lambda$setupPasswordRequirementsView$0(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
