package com.safebankmobilebankingapp.app.modules.history.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.databinding.RowSeventyoneBinding
import com.safebankmobilebankingapp.app.modules.history.`data`.model.SeventyoneRowModel
import kotlin.Int
import kotlin.collections.List

class SeventyOneAdapter(
  var list: List<SeventyoneRowModel>
) : RecyclerView.Adapter<SeventyOneAdapter.RowSeventyoneVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSeventyoneVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_seventyone,parent,false)
    return RowSeventyoneVH(view)
  }

  override fun onBindViewHolder(holder: RowSeventyoneVH, position: Int) {
    val seventyoneRowModel = SeventyoneRowModel()
    // TODO uncomment following line after integration with data source
    // val seventyoneRowModel = list[position]
    holder.binding.seventyoneRowModel = seventyoneRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SeventyoneRowModel>) {
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
      item: SeventyoneRowModel
    ) {
    }
  }

  inner class RowSeventyoneVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSeventyoneBinding = RowSeventyoneBinding.bind(itemView)
  }
}
