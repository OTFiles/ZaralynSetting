.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/util/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/slices/SliceData;

.field private final synthetic f$1:Ljava/lang/CharSequence;

.field private final synthetic f$2:Landroidx/slice/builders/SliceAction;

.field private final synthetic f$3:Lcom/android/settings/core/SliderPreferenceController;

.field private final synthetic f$4:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Lcom/android/settings/core/SliderPreferenceController;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$0:Lcom/android/settings/slices/SliceData;

    iput-object p2, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$2:Landroidx/slice/builders/SliceAction;

    iput-object p4, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$3:Lcom/android/settings/core/SliderPreferenceController;

    iput-object p5, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$4:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$0:Lcom/android/settings/slices/SliceData;

    iget-object v1, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$2:Landroidx/slice/builders/SliceAction;

    iget-object v3, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$3:Lcom/android/settings/core/SliderPreferenceController;

    iget-object v4, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;->f$4:Landroid/app/PendingIntent;

    move-object v5, p1

    check-cast v5, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-static/range {v0 .. v5}, Lcom/android/settings/slices/SliceBuilderUtils;->lambda$buildSliderSlice$2(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Lcom/android/settings/core/SliderPreferenceController;Landroid/app/PendingIntent;Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V

    return-void
.end method
