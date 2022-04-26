// EPSM 5B audio chip emulator for FamiStudio.
// Added to Nes_Snd_Emu by @NesBleuBleu.

#ifndef NES_EPSM_H
#define NES_EPSM_H

#include "Nes_Apu.h"
#include "ym3438.h"
#include <queue>

class Nes_EPSM {
public:
	Nes_EPSM();
	~Nes_EPSM();

	// See Nes_Apu.h for reference
	void reset();
	void volume(double);
	void output(Blip_Buffer*, Blip_Buffer*);
	void treble_eq(blip_eq_t const& eq);
	void enable_channel(int idx, bool enabled);
	void end_frame(cpu_time_t);
	void mix_samples(blip_sample_t* sample_buffer, long sample_cnt);
	void write_register(cpu_time_t time, cpu_addr_t addr, int data);
	void get_register_values(struct epsm_register_values* regs);
	void WriteToChip(uint8_t a, uint8_t d, cpu_time_t time);


	unsigned char regs_a0[184];
	unsigned char ages_a0[184];
	unsigned char regs_a1[184];
	unsigned char ages_a1[184];

	enum { psg_clock = 4000000 };
	enum { reg_select = 0x401c };
	enum { reg_write = 0x401d };
	enum { reg_select2 = 0x401e };
	enum { reg_write2 = 0x401f };
	enum { reg_range = 0x1 };

	enum { shadow_internal_regs_count = 220 };
	void start_seeking();
	void stop_seeking(blip_time_t& clock);
	void write_shadow_register(int addr, int data);

private:
	// noncopyable
	Nes_EPSM(const Nes_EPSM&);
	Nes_EPSM& operator = (const Nes_EPSM&);
	std::queue<int> data_write;
	std::queue<int> a_write;

	void reset_psg();
	void reset_opn2();
	long run_until(cpu_time_t);

	int reg;
	uint8_t a0;
	uint8_t a1;
	uint8_t current_register;
	uint8_t mask_fm;
	uint8_t maskRythm;
	double vol;
	struct __PSG* psg;
	ym3438_t opn2;

	Blip_Buffer* output_buffer;
	Blip_Buffer* output_buffer_right;
	cpu_time_t last_time;
	int last_amp;
	int last_amp_right;
	Blip_Synth<blip_med_quality, 15420> synth;
	Blip_Synth<blip_med_quality, 15420> synth_right;

	short shadow_internal_regs[shadow_internal_regs_count];
	short shadow_internal_regs2[shadow_internal_regs_count];
};


// Must match the definition in NesApu.cs.
struct epsm_register_values
{
	// $9030 (Internal registers $10 to $35)
	unsigned char regs_a0[184];
	unsigned char ages_a0[184];
	unsigned char regs_a1[184];
	unsigned char ages_a1[184];
};
#endif
