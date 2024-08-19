-- CreateTable
CREATE TABLE "classrooms" (
    "id" UUID NOT NULL,
    "subject" VARCHAR(100) NOT NULL,
    "vacations" INTEGER NOT NULL DEFAULT 0,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "classrooms_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Registrations" (
    "id" UUID NOT NULL,
    "student_id" UUID NOT NULL,
    "classroom_id" UUID NOT NULL,

    CONSTRAINT "Registrations_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Registrations" ADD CONSTRAINT "Registrations_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "students"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Registrations" ADD CONSTRAINT "Registrations_classroom_id_fkey" FOREIGN KEY ("classroom_id") REFERENCES "classrooms"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
