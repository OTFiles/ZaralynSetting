.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;

    invoke-direct {v0}, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;-><init>()V

    sput-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$-hUbn9epxyVxqc9qNo66a-LO5Ug;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->lambda$getSoundSettingSummary$0(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
