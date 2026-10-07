.class public final synthetic Lcom/android/settings/development/-$$Lambda$EmulateDisplayCutoutPreferenceController$M0LG4OIyq1gHZ_QtkGbuUJde4QM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/development/-$$Lambda$EmulateDisplayCutoutPreferenceController$M0LG4OIyq1gHZ_QtkGbuUJde4QM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/development/-$$Lambda$EmulateDisplayCutoutPreferenceController$M0LG4OIyq1gHZ_QtkGbuUJde4QM;

    invoke-direct {v0}, Lcom/android/settings/development/-$$Lambda$EmulateDisplayCutoutPreferenceController$M0LG4OIyq1gHZ_QtkGbuUJde4QM;-><init>()V

    sput-object v0, Lcom/android/settings/development/-$$Lambda$EmulateDisplayCutoutPreferenceController$M0LG4OIyq1gHZ_QtkGbuUJde4QM;->INSTANCE:Lcom/android/settings/development/-$$Lambda$EmulateDisplayCutoutPreferenceController$M0LG4OIyq1gHZ_QtkGbuUJde4QM;

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

    check-cast p1, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    invoke-static {p1}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;->lambda$static$0(Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;)I

    move-result p1

    return p1
.end method
