.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/util/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/support/v4/graphics/drawable/IconCompat;

.field private final synthetic f$2:Ljava/lang/CharSequence;

.field private final synthetic f$3:Landroidx/slice/builders/SliceAction;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;->f$1:Landroid/support/v4/graphics/drawable/IconCompat;

    iput-object p3, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;->f$2:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;->f$3:Landroidx/slice/builders/SliceAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;->f$1:Landroid/support/v4/graphics/drawable/IconCompat;

    iget-object v2, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;->f$2:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;->f$3:Landroidx/slice/builders/SliceAction;

    check-cast p1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->lambda$buildUnavailableSlice$4(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
