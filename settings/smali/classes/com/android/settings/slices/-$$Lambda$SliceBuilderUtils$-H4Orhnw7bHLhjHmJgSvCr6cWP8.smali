.class public final synthetic Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v4/util/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/slices/SliceData;

.field private final synthetic f$1:Ljava/lang/CharSequence;

.field private final synthetic f$2:Landroid/app/PendingIntent;

.field private final synthetic f$3:Landroid/support/v4/graphics/drawable/IconCompat;

.field private final synthetic f$4:Landroidx/slice/builders/SliceAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$0:Lcom/android/settings/slices/SliceData;

    iput-object p2, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$2:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$3:Landroid/support/v4/graphics/drawable/IconCompat;

    iput-object p5, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$4:Landroidx/slice/builders/SliceAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$0:Lcom/android/settings/slices/SliceData;

    iget-object v1, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$2:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$3:Landroid/support/v4/graphics/drawable/IconCompat;

    iget-object v4, p0, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;->f$4:Landroidx/slice/builders/SliceAction;

    move-object v5, p1

    check-cast v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-static/range {v0 .. v5}, Lcom/android/settings/slices/SliceBuilderUtils;->lambda$buildToggleSlice$0(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    return-void
.end method
