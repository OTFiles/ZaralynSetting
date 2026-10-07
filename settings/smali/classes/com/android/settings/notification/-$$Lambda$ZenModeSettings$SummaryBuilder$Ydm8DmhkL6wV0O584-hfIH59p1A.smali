.class public final synthetic Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;

    invoke-direct {v0}, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;-><init>()V

    sput-object v0, Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$ZenModeSettings$SummaryBuilder$Ydm8DmhkL6wV0O584-hfIH59p1A;

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

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->lambda$getMsgEventReminderSettingSummary$2(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
