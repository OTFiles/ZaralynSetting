.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;

    invoke-direct {v0}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;->INSTANCE:Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$S-iRpeKDC_3jmfXOTbVaWpa8f5Y;

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

    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$onAttach$0(Lcom/android/settings/core/BasePreferenceController;)Z

    move-result p1

    return p1
.end method
