.class public final synthetic Lcom/android/settings/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$aLk12WuaBTV2piitP3fdnB0w-eM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$aLk12WuaBTV2piitP3fdnB0w-eM;->f$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$aLk12WuaBTV2piitP3fdnB0w-eM;->f$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->lambda$clearError$0(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    return-void
.end method
