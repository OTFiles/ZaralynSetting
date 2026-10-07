.class abstract Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;
.super Ljava/lang/Object;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "QueuedEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
    .param p2, "x1"    # Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$QueuedEvent;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V

    return-void
.end method


# virtual methods
.method public abstract send(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V
.end method
