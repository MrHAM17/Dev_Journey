package com.tikpikshortvideosocialnetworking.app.modules.soundused.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowSoundusedBinding
import com.tikpikshortvideosocialnetworking.app.modules.soundused.`data`.model.SoundusedRowModel
import kotlin.Int
import kotlin.collections.List

class SoundUsedAdapter(
  var list: List<SoundusedRowModel>
) : RecyclerView.Adapter<SoundUsedAdapter.RowSoundusedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSoundusedVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_soundused,parent,false)
    return RowSoundusedVH(view)
  }

  override fun onBindViewHolder(holder: RowSoundusedVH, position: Int) {
    val soundusedRowModel = SoundusedRowModel()
    // TODO uncomment following line after integration with data source
    // val soundusedRowModel = list[position]
    holder.binding.soundusedRowModel = soundusedRowModel
  }

  override fun getItemCount(): Int = 6
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SoundusedRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: SoundusedRowModel
    ) {
    }
  }

  inner class RowSoundusedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSoundusedBinding = RowSoundusedBinding.bind(itemView)
  }
}
